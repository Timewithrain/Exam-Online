function queryGrade(){
    $.post("queryServlet",{
        "userName":$("#userName").val(),
        "test_paper_no":$("#test_paper_no").val()
    },
    function(data) {
        //动态生成成绩列表
        console.log(data);
        var userName = $("#userName").val();
        var test_paper_no = $("#test_paper_no").val()
        var grade = data;
        $("#grade_info").append('<tr><th class="myth">'+userName+'</th>'+
            '<th class="myth">'+test_paper_no+'</th>'+
            '<th class="myth">'+grade+'</th></tr>')
    },"json");
}
//测试
/*function queryGrade(){

    var userName = "rabit";
    var test_paper_no = "a"
    var grade = 90;
    $("#grade_info").append('<tr><th class="myth">' + userName + '</th>' +
        '<th class="myth">' + test_paper_no + '</th>' +
        '<th class="myth">' + grade + '</th></tr>')
}*/