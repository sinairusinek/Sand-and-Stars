xquery version "3.1";

(:~
 : This is the place to import your own XQuery modules for either:
 :
 : 1. custom API request handling functions
 : 2. custom templating functions to be called from one of the HTML templates
 :)
module namespace api="http://teipublisher.com/api/custom";

(: Add your own module imports here :)
declare namespace tei="http://www.tei-c.org/ns/1.0";

import module namespace rutil="http://exist-db.org/xquery/router/util";
import module namespace config = "http://www.tei-c.org/tei-simple/config" at "config.xqm";
import module namespace app="teipublisher.com/app" at "app.xql";
import module namespace pages="http://www.tei-c.org/tei-simple/pages" at "lib/pages.xql";
import module namespace errors = "http://exist-db.org/xquery/router/errors";

(:~
 : Keep this. This function does the actual lookup in the imported modules.
 :)
declare function api:lookup($name as xs:string, $arity as xs:integer) {
    try {
        function-lookup(xs:QName($name), $arity)
    } catch * {
        ()
    }
};
declare function api:synoptic-toc($request as map(*)) {
    let $doc := xmldb:decode-uri($request?parameters?id)
    let $view := head(($request?parameters?view, $config:default-view))
    let $version := $request?parameters?version
    let $xml := pages:load-xml1($view, (), $doc)
    return
    if (exists($xml)) then
            pages:toc-div-synopsis(root($xml?data)/id($version), $xml, $request?parameters?target, $request?parameters?icons, $doc)
        else
            error($errors:NOT_FOUND, "Document " || $doc || " not found")
            
};
