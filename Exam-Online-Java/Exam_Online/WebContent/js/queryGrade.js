function queryGrade(){
    $.post("queryServlet",{
        "userName":$("#userName").val(),
        "test_paper_no":$("#test_paper_no").val()
    },
    function(data) {
        console.log(data);
        //动态生成成绩列表
    });
}