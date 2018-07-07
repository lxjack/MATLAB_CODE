function Fren = Birthday_Random_Test( num )
        %传入班级人数，返回班上至少有两个生日在同一天的概率
        %调用方法：   Birthday_Random_Test( 30 )
        %生日随机碰对试验        
        times=10000;              %试验次数
        sum=0 ;                       %实验中生日在相同一天的    计数
        
       for i=1:times           
                 sum=sum+test(num);
       end
       
       Fren=sum/times;

end

function  y=test(num)
    %传入班级人数，返回一次试验的结果
    x=1+fix(365*rand(1,num));        %产生30个生日随机天数
    y=0;

    for i=1:(num-1)
        for j=(i+1):num
            if x(i)==x(j)
                y=1;
                return 
            end
        end
    end
end