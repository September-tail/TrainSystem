(function($){
    //插件
    $.extend($,{
        //命名空间
        sortTable:{
            sort:function(tableId,Idx){
                var table = document.getElementById(tableId);
                var tbody = table.tBodies[0];
                var tr = tbody.rows;
         
                var trValue = new Array();
                for (var i=0; i<tr.length; i++ ) {
                    trValue[i] = tr[i];  //将表格中各行的信息存储在新建的数组中
                }
         
                if (tbody.sortCol == Idx) {
                    trValue.reverse(); //如果该列已经进行排序过了，则直接对其反序排列
                } else {
                    //trValue.sort(compareTrs(Idx));  //进行排序
                    trValue.sort(function(tr1, tr2){
                        var value1 = tr1.cells[Idx].innerHTML;
                        var value2 = tr2.cells[Idx].innerHTML;
                        return value1.localeCompare(value2);
                    });
                }
         
                var fragment = document.createDocumentFragment();  //新建一个代码片段，用于保存排序后的结果
                for (var i=0; i<trValue.length; i++ ) {
                    fragment.appendChild(trValue[i]);
                }
         
                tbody.appendChild(fragment); //将排序的结果替换掉之前的值
                tbody.sortCol = Idx;
            }
        }
    });      
})(jQuery);