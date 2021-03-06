/*要求：
* 类名、属性名、属性类型、方法名、方法参数、方法返回值自拟
* 自己写main函数测试设计是否合理

1.设计一个”狗“类
1> 属性
* 颜色
* 速度（单位是m/s）
* 性别
* 体重（单位是kg）

2> 行为
* 吃：每吃一次，体重增加0.5kg，输出吃完后的体重
* 吠（叫）：输出所有的属性
* 跑：每吃一次，体重减少0.5kg，输出速度和跑完后的体重
* 比较颜色：跟别的狗比较颜色，如果一样，返回YES，不一样，返回NO
* 比较速度：跟别的狗比较速度，返回速度差（自己的速度 - 其他狗的速度）

2.结合前面的“狗”类，设计一个“人”类
1> 属性
* 姓名
* 狗（养了一条狗）

2> 行为
* 喂狗：每喂一次，狗就会执行“吃”这个行为
* 遛狗：每溜一次，狗就会执行“跑”这个行为

3.设计一个”学生“类
1> 属性
* 姓名
* 生日
* 年龄
* 身高（单位是m）
* 体重（单位是kg）
* 性别
* C语言成绩
* OC成绩
* iOS成绩

2> 行为
* 跑步：每跑步一次，身高增加1cm，体重减小0.5kg，输出跑完后的体重
* 吃饭：每吃一次，身高增加1cm，体重增加0.5kg，输出吃完后的体重
* 学习：每学习一次，3可成绩各加1分，输出学习完后的3科成绩
* 睡觉：输出所有的属性
* 比较C语言成绩：跟另外一个学生比较C语言成绩，返回成绩差（自己的成绩 - 其他人的成绩）
* 比较OC成绩：跟另外一个学生比较OC语言成绩，返回成绩差（自己的成绩 - 其他人的成绩）
* 比较iOS成绩：跟另外一个学生比较iOS语言成绩，返回成绩差（自己的成绩 - 其他人的成绩）
* 计算总分：算出3科成绩的总分
* 计算平均分：算出3科成绩的平均分

4.设计一个成绩类
1> 属性
* C语言成绩
* OC成绩
* iOS成绩

2> 行为
* 比较C语言成绩：跟另外一个成绩对象比较C语言成绩，返回成绩差（自己 - 其他成绩）
* 比较OC成绩：跟另外一个成绩对象比较OC语言成绩，返回成绩差（自己 - 其他成绩）
* 比较iOS成绩：跟另外一个成绩对象比较iOS语言成绩，返回成绩差（自己 - 其他成绩）
* 计算总分：算出3科成绩的总分
* 计算平均分：算出3科成绩的平均分

5.利用前面的成绩类，重新设计一个学生类
1> 属性
* 姓名
* 学号
* 成绩（包括3科成绩）

2> 行为
* 比较C语言成绩：跟另外一个学生比较C语言成绩，返回成绩差（自己的成绩 - 其他人的成绩）
* 比较OC成绩：跟另外一个学生比较OC语言成绩，返回成绩差（自己的成绩 - 其他人的成绩）
* 比较iOS成绩：跟另外一个学生比较iOS语言成绩，返回成绩差（自己的成绩 - 其他人的成绩）
* 比较总分：跟另外一个学生比较总分，返回成绩差（自己的成绩 - 其他人的成绩）
* 比较平均分：跟另外一个学生比较平均分，返回成绩差（自己的成绩 - 其他人的成绩）*/