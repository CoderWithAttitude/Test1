contract test1{
    struct userProfiles{
       string name;
       bytes32 age;
       string linkedinUrl;
       string githubUrl;
       string twitterHandle;
      
    }
    address private creator;
    userProfiles[] private prof;
    mapping(address =>userProfiles[]) private profiles;
    modifier onlyCreator(){
        if(creator != msg.sender) throw;
        
        _
    }
    function createProfile(){
        creator = msg.sender;
        profiles[creator].push(userProfiles({
            name:"Yemi",
            age:50,
            linkedinUrl:"http://www.linkedin.com/YemiOlulana",
            githubUrl:"github.com/coderwithattitude",
            twitterHandle:"twitter.com/coderwa"
        }));
        
    }
    function updateProfile()onlyCreator(){
        profiles[creator].push(userProfiles({
            name:"Yele",
            age:50,
            linkedinUrl:"http://www.linkedin.com/YemiOlulana",
            githubUrl:"github.com/coderwithattitude",
            twitterHandle:"twitter.com/coderwa"
        }));
    }
    function getProfile() constant returns
    (string _name,bytes32 _age,string _linkUrl,string _git,string _twit){
        for(uint i=0;i<=prof.length;i++){
             _name = prof[i].name;
             _age = prof[i].age;
             _linkUrl = prof[i].linkedinUrl;
             _git = prof[i].githubUrl;
             _twit = prof[i].twitterHandle;
        }
    }
 
}