public class StringArrayTest {
    public static List<String> generateStringArray(Integer n){
        List<String> arrayString = new List<String>();
        
        for(Integer i=0; i<n; i++){
            arrayString.add('Test '+ i);
        }
        
        return arrayString;
    }
}