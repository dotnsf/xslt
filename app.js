//. app.js
var express = require( 'express' ),
    fs = require( 'fs' ),
    app = express();
var Encoding = require( 'encoding-japanese' );
var { Xslt, xmlParse } = require( 'xslt-processor' );
var xslt = new Xslt();

app.use( express.Router() );
//app.use( express.static( __dirname + '/public' ) );

app.get( '/', function( req, res ){
  res.contentType( 'text/plain; charset=utf-8' );

  var n = req.query.n ? req.query.n : '0';
  var xmlfile = 'xml/xml_doc' + n + '.xml';
  var xslfile = 'xml/stylesheet_form' + n + '.xsl';

  var xmlbuffer = fs.readFileSync( xmlfile );
  var xslbuffer = fs.readFileSync( xslfile );

  var xmlstring = Encoding.convert( xmlbuffer, {
    from: 'SJIS',
    to: 'UTF8',
    type: 'string'
  });
  var xslstring = Encoding.convert( xslbuffer, {
    from: 'SJIS',
    to: 'UTF8',
    type: 'string'
  });

  var xml = xslt.xsltProcess( xmlParse( xmlstring ), xmlParse( xslstring ) );
  console.log( xml );  //. xslstring のまま？

  res.write( xml );
  res.end();
});

var port = process.env.PORT || 8080;
app.listen( port );
console.log( "server starting on " + port + " ..." );
