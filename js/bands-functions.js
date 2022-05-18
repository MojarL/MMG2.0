
let searchText = document.getElementById("search-text");
searchText.addEventListener("keyup",search);
let data = '';
let searchDiv = document.getElementById("search-div");

let orderBy = document.getElementById('orderBy').value;
let orderList = document.getElementById('orderList').addEventListener("keyup", changeOrder);
console.log(orderBy);

async function search() {
  data = '';
  searchDiv.innerHTML = "";
  try {
    if(searchText.value != ''){
      let c = await fetch(`${'./api/search/'+searchText.value}`);
      data = await c.json();
      if(data != ''){
        printBands();
      }else{
        searchDiv.innerHTML =
        `<div class="comentario" id="comentario">No se encontró ná :(</div>`;
      }
    }else{
      searchDiv.innerHTML =
      `<div class="comentario" id="comentario">Buscar...</div>`;
    }  
  } catch(error) {
    console.error(error.message + ' Algo pasó :c');

  }
}


function printBands(){
  let itemsCount = 3;

  for (let i = 0; i < data.length; i++){
    if (itemsCount == 3){
      itemsCount = 0;

      var row = document.createElement('div');
      row.classList = 'row';
      searchDiv.appendChild(row)
    }
    itemsCount++

    var div = document.createElement('div');
    var productItem = document.createElement('div');
    var imgItem = document.createElement('img');
    var textItem = document.createElement('div');
    var title = document.createElement('h5');
    var link = document.createElement('a');

    div.classList = 'col-lg-4 col-md-6 col-sm-6';
    productItem.classList = 'product__item';
    imgItem.classList = 'product__item__pic set-bg';
    imgItem.src = data[i].foto_banda;
    imgItem.alt = data[i].nombre_banda;
    textItem.classList = 'product__item__text';
    link.innerHTML = `${data[i].nombre_disco} - ${data[i].nombre_banda}`;
    link.href = data[i].link_disco;
    link.target = '_blank'
  

    row.appendChild(div);
    div.appendChild(productItem);
    productItem.appendChild(imgItem);
    productItem.appendChild(textItem);
    textItem.appendChild(title);
    title.appendChild(link);
  }
}


function changeOrder(){
  orderBy = document.getElementById('orderBy').value;
  console.log(orderBy);
}
