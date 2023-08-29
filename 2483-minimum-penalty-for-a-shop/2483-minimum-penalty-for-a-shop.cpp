class Solution {
public:
    int bestClosingTime(string customers) 
    {
        int currentPen = count(customers.begin(),customers.end(),'Y');
        int miniPen = currentPen;
        int earliest = 0;
        
        for(int i=0;i<customers.size();i++)
        {
            char ch = customers[i];
            if(ch=='Y')
            {
                currentPen--;
            }
            else{
                currentPen++;
            }
            
            if(miniPen>currentPen)
            {
                miniPen = currentPen;
                earliest = i+1;
            }
        }
        return earliest;
    }
};