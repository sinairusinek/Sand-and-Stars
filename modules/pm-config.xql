
xquery version "3.1";

module namespace pm-config="http://www.tei-c.org/tei-simple/pm-config";

import module namespace pm-SandNStars-web="http://www.tei-c.org/pm/models/SandNStars/web/module" at "../transform/SandNStars-web-module.xql";
import module namespace pm-SandNStars-print="http://www.tei-c.org/pm/models/SandNStars/fo/module" at "../transform/SandNStars-print-module.xql";
import module namespace pm-SandNStars-latex="http://www.tei-c.org/pm/models/SandNStars/latex/module" at "../transform/SandNStars-latex-module.xql";
import module namespace pm-SandNStars-epub="http://www.tei-c.org/pm/models/SandNStars/epub/module" at "../transform/SandNStars-epub-module.xql";
import module namespace pm-docx-tei="http://www.tei-c.org/pm/models/docx/tei/module" at "../transform/docx-tei-module.xql";

declare variable $pm-config:web-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "SandNStars.odd" return pm-SandNStars-web:transform($xml, $parameters)
    default return pm-SandNStars-web:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:print-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "SandNStars.odd" return pm-SandNStars-print:transform($xml, $parameters)
    default return pm-SandNStars-print:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:latex-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "SandNStars.odd" return pm-SandNStars-latex:transform($xml, $parameters)
    default return pm-SandNStars-latex:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:epub-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "SandNStars.odd" return pm-SandNStars-epub:transform($xml, $parameters)
    default return pm-SandNStars-epub:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:tei-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "docx.odd" return pm-docx-tei:transform($xml, $parameters)
    default return error(QName("http://www.tei-c.org/tei-simple/pm-config", "error"), "No default ODD found for output mode tei")
            
    
};
            
    