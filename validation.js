function onlyalpha(source, args) 
{
    var data = args.Value; //abc123xyz
    alert(data);
    var alpha = data.match(/[a-z|A-Z ]+/); //abcxyz
    if (data != alpha) 
    {
        args.IsValid = false;
    }
}

function checkemail(source, args) {
    var data = args.Value;
    var ptrn = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if (!ptrn.test(data)) {
        args.IsValid = false;
    }
}

function checkpincode(source, args) 
{
    var data = args.Value;
    var ptrn = /\d{3}\-\{3}/;
    if (!ptrn.test(data)) {
        args.IsValid = false;
    }
}

function checkmobnumber(source, args) 
{
    var data = args.Value;
    var ptrn = /\d{10}/;
    if (!ptrn.test(data)) {
        args.IsValid = false;
    }

}
