function Fren = Birthday_Random_Test( num )
        %����༶���������ذ�������������������ͬһ��ĸ���
        %���÷�����   Birthday_Random_Test( 30 )
        %���������������        
        times=10000;              %�������
        sum=0 ;                       %ʵ������������ͬһ���    ����
        
       for i=1:times           
                 sum=sum+test(num);
       end
       
       Fren=sum/times;

end

function  y=test(num)
    %����༶����������һ������Ľ��
    x=1+fix(365*rand(1,num));        %����30�������������
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