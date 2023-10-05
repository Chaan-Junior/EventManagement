function validateForm() {
  var ename = document.forms["bookForm"]["ename"].value;
  var venue = document.forms["bookForm"]["venue"].value;
  var guests = document.forms["bookForm"]["guests"].value;
  

  if (ename.length < 5) {
    alert("Name must be at least 5 characters long");
    return false;
  }

  if (venue.length < 5) {
    alert("Address must be at least 5 characters long");
    return false;
  }

   if (guests > 1000) {
    alert("Maximum no of guests is 1000");
    return false;
  }
}