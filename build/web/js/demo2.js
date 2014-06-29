(function(){

	var button = document.getElementById('cn-button'),
    wrapper = document.getElementById('cn-wrapper'),
    menu = document.getElementById('menu');
    
    //open and close menu when the button is clicked
	var open = false;
    
    button.addEventListener('click', handler, false);
    
    menu.addEventListener('click', handler1, false);
    
    function handler1() {
        if(!open)   {
            document.getElementById('component').setAttribute("style","visibility:visible");            
        }
        else    {
            document.getElementById('component').setAttribute("style","visibility:hidden");
        }
        handler();
    }   
    
	function handler(){
	  if(!open){
	    this.innerHTML = "Close";
	    classie.add(wrapper, 'opened-nav');	    
	  }
	  else{
	    this.innerHTML = "Menu";
		classie.remove(wrapper, 'opened-nav');
	  }
	  open = !open;
	}
	function closeWrapper(){
		classie.remove(wrapper, 'opened-nav');
	}

})();
