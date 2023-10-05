
function validateForm() {
  var name = document.forms["myForm"]["rName"].value;
  var address = document.forms["myForm"]["rAddress"].value;
  var phone = document.forms["myForm"]["rPhone"].value;
  var email = document.forms["myForm"]["rEmail"].value;

  if (name.length < 5) {
    alert("Name must be at least 5 characters long");
    return false;
  }

  if (address.length < 5) {
    alert("Address must be at least 5 characters long");
    return false;
  }

  if (isNaN(phone) || phone.length != 10) {
    alert("Phone number must be a 10-digit number");
    return false;
  }

  if (!email.includes("@gmail.com")) {
    alert("Email must be a valid Gmail address");
    return false;
  }
}