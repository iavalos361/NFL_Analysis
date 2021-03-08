function Result2 = NFLLine(filename,Y,Y1)
%Plots Avg 1stdowsn and fieldgoals
%  outputs a plot with two lines each
%
      
   
    
       hold on;
       X = (1:32);
     
       N = filename{1:end,1};
       
      Result2 = plot(X,Y,'r-*');
      Result2 = plot(X,Y1,'g');
      
         xlabel('Team Names ');
      
      
     set(gca,  'XTick',  1:32);  

      set(gca,  'XTickLabel',  N);
      rotateXLabels( gca, 45 );
    
     legend('Avg 1st','Fieldgoals');
    
  
      
      hold off;
     
end

