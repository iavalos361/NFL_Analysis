function Result1 = NFLPlot(filename,X,Y,N)
%plots touchdowns for each team 
% in that year  

      
       hold on;
       
      Result1 = bar(X,Y);
      
         xlabel('Team Names ');
      ylabel('#  of  touchdowns');
      
      
     set(gca,  'XTick',  1:32);  

      set(gca,  'XTickLabel',  N);
      rotateXLabels( gca, 45 );
    
     
    
  
      
      hold off;
end

