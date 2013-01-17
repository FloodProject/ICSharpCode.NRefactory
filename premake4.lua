project "ICSharpCode.NRefactory"
    
    SetupManagedDependencyProject()
    
    kind "SharedLib"
    language "C#"
    
    files 
    { 
        "./ICSharpCode.NRefactory/**.cs" 
    }
    
    links
    {
        "Mono.Cecil",
        "System",
        "System.Core",
        "System.Xml",
        "System.Xml.Linq",
    }

project "ICSharpCode.NRefactory.CSharp"
    
    SetupManagedDependencyProject()
    
    kind "SharedLib"
    language "C#"
    
    flags { "unsafe" }
    
    defines { "FULL_AST", "NET_4_0", "NET_4_5" }
    
    files 
    { 
        "./ICSharpCode.NRefactory.CSharp/**.cs" 
    }
    
    links
    {
        "ICSharpCode.NRefactory",
        "System",
        "System.Core",
        "System.Xml",
        "System.Xml.Linq",
    }