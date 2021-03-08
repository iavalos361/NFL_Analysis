function Result3 = NFLCompare(filename,teamName1,teamName2,choice)
%Compares two teams stats
% takes user inputs and outputs them in bargraphs

         X = filename(:,1); %put all strings into X%
         Z = X{1:end, :};  %all strings made into cell array%
         V = strmatch(teamName1, Z);   %find row the string is in% 
         S = strmatch(teamName2,Z);
         
         if choice==1
         
         fieldGoals1 = filename{V,11};
         firstDown1 = filename{V,12};
         touchDowns1 = filename{V,13};
         
         fieldGoals2 = filename{S,11};
         firstDown2 = filename{S,12};
         touchDowns2 = filename{S,13};
         end
         if choice==2
               
         fieldGoals1 = filename{V,8};
         firstDown1 = filename{V,9};
         touchDowns1 = filename{V,10};
         
         fieldGoals2 = filename{S,8};
         firstDown2 = filename{S,9};
         touchDowns2 = filename{S,10};
         end
         if choice==3
         
         fieldGoals1 = filename{V,5};
         firstDown1 = filename{V,6};
         touchDowns1 = filename{V,7};
         
         fieldGoals2 = filename{S,5};
         firstDown2 = filename{S,6};
         touchDowns2 = filename{S,7};
         end
         if choice==4
         
         fieldGoals1 = filename{V,2};
         firstDown1 = filename{V,3};
         touchDowns1 = filename{V,4};
         
         fieldGoals2 = filename{S,2};
         firstDown2 = filename{S,3};
         touchDowns2 = filename{S,4};
             
         end  
         
             
         
         TeamTouchdowns = [touchDowns1 touchDowns2];
         TeamFieldGoals =[fieldGoals1 fieldGoals2];
         TeamFirstDowns = [firstDown1 firstDown2];
         
         figure
    Result3 = bar(1:2, [TeamTouchdowns' TeamFieldGoals' TeamFirstDowns'], 1);
    
    
     axis([0 3 0 70]); %axis limits%
    set(gca, 'XTick', 1:2);
     set(gca,  'XTickLabel',{teamName1,teamName2});
    
    
    legend('Touchdowns','FieldGoals','1stDowns');

   
       
end

