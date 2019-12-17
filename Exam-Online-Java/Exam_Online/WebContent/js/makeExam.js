    // 保存所有题目
    var topics;
    // 保存用户的选项
    var userOptions = new Array();
    // 保存题目正确的选项
    var rightAnswers = new Array();
    // 保存题目的分数
    var grades = new Array();

    // 根据参数生成页面元素
    function createTopic(i,title,answers){
        var titleDIV = '<div class="title"><p>'+title+'</p></div>';
            var contentDIV = '<div class="content">'+
                    '<ul class="options">'+
                        '<li class="option">'+
                            '<label >'+
                                '<input type="radio" name="ques'+i+'" value="A" class="Op-button">'+
                                '<span class="radio"></span>'+
                                '<span class="item">A.'+answers[0]+'</span>'+
                            '</label>'+
                        '</li>'+
                        '<li class="option">'+
                            '<label >'+
                                '<input type="radio" name="ques'+i+'" value="B" class="Op-button">'+
                                '<span class="radio"></span>'+
                                '<span class="item">B.'+answers[1]+'</span>'+
                            '</label>'+
                        '</li>'+
                        '<li class="option">'+
                            '<label >'+
                                '<input type="radio" name="ques'+i+'" value="C" class="Op-button">'+
                                '<span class="radio"></span>'+
                                '<span class="item">C.'+answers[2]+'</span>'+
                            '</label>'+
                        '</li>'+
                        '<li class="option">'+
                            '<label>'+
                                '<input type="radio" name="ques'+i+'" value="D" class="Op-button">'+
                                '<span class="radio"></span>'+
                                '<span class="item">D.'+answers[3]+'</span>'+
                            '</label>'+
                        '</li>'+
                    '</ul>'+
                '</div>';
        var topicLI = '<li>'+titleDIV+contentDIV+'</li>';
        $(".topics").append(topicLI);
    }

    // 根据用户选项以及正确答案计算成绩
    function getGrade(userOptions,rightAnswers){
        var grade = 0;
        for(var i=0;i<topics.length;i++){
            var val = $('input[name="ques'+(i+1)+'"]:checked').val();
            // 此处还无法判断
            console.log(val+":"+rightAnswers[i])
            if(val==rightAnswers[i]){
                grade = grade + 5;
            }
        }
        $.post("saveGrade",{
            "grade":grade
        },function(){
            alert("最终得分为：" + grade);
        },"json");
    }

    // 解析json并生成页面元素
    $.post("begin",function(data){
        // 解析json串
        topics = data["topics"];
        for(var i=0;i<topics.length;i++){
            var topic = topics[i];
            // 获取题目
            var title = topic["topic"];
            // 获取答案
            var answers = new Array();
            for(var j=0;j<topic["answers"].length;j++){
                answers.push(topic["answers"][j]);
            }
            // 获取并记录正确答案
            var rightAnswer = topic["rightAnswer"];
            rightAnswers.push(rightAnswer);
            // 获取题目分数
            var grade = topic["grade"];
            grades.push(grade);
            // 生成页面元素
            createTopic(i+1,title,answers);
        }
    },"json");