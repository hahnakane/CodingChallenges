var key;
function generateKey() {
  var i = 1;
  var x = 211;
  var n = 5493;
  while (i <= 25) {
    x = (x * i) % n;
    i++;
   }
  key = "flag{" + Math.abs(x) + "}";
}
           
generateKey();
