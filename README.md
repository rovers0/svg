# svg

$(document).ready(function(){
        $("input[type=checkbox]").change(function (){
            var val = [];
            $(':checkbox:checked').each(function(i){
              val[i] = $(this).val();
             
 });console.log(val);  
    });
    });