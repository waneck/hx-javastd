package com.sun.org.apache.xalan.internal.xsltc.compiler;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: XSLTC.java,v 1.2.4.1 2005/09/05 09:51:38 pvedula Exp $
*/
extern class XSLTC
{
	@:public @:static @:final public static var FILE_OUTPUT(default, null) : Int;
	
	@:public @:static @:final public static var JAR_OUTPUT(default, null) : Int;
	
	@:public @:static @:final public static var BYTEARRAY_OUTPUT(default, null) : Int;
	
	@:public @:static @:final public static var CLASSLOADER_OUTPUT(default, null) : Int;
	
	@:public @:static @:final public static var BYTEARRAY_AND_FILE_OUTPUT(default, null) : Int;
	
	@:public @:static @:final public static var BYTEARRAY_AND_JAR_OUTPUT(default, null) : Int;
	
	/**
	* XSLTC compiler constructor
	*/
	@:overload @:public public function new(useServicesMechanism : Bool) : Void;
	
	/**
	* Set the state of the secure processing feature.
	*/
	@:overload @:public public function setSecureProcessing(flag : Bool) : Void;
	
	/**
	* Return the state of the secure processing feature.
	*/
	@:overload @:public public function isSecureProcessing() : Bool;
	
	/**
	* Return the state of the services mechanism feature.
	*/
	@:overload @:public public function useServicesMechnism() : Bool;
	
	/**
	* Set the state of the services mechanism feature.
	*/
	@:overload @:public public function setServicesMechnism(flag : Bool) : Void;
	
	/**
	* Only for user by the internal TrAX implementation.
	*/
	@:overload @:public public function getParser() : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser;
	
	/**
	* Only for user by the internal TrAX implementation.
	*/
	@:overload @:public public function setOutputType(type : Int) : Void;
	
	/**
	* Only for user by the internal TrAX implementation.
	*/
	@:overload @:public public function getOutputProperties() : java.util.Properties;
	
	/**
	* Initializes the compiler to compile a new stylesheet
	*/
	@:overload @:public public function init() : Void;
	
	/**
	* Defines an external SourceLoader to provide the compiler with documents
	* referenced in xsl:include/import
	* @param loader The SourceLoader to use for include/import
	*/
	@:overload @:public public function setSourceLoader(loader : com.sun.org.apache.xalan.internal.xsltc.compiler.SourceLoader) : Void;
	
	/**
	* Set a flag indicating if templates are to be inlined or not. The
	* default is to do inlining, but this causes problems when the
	* stylesheets have a large number of templates (e.g. branch targets
	* exceeding 64K or a length of a method exceeding 64K).
	*/
	@:overload @:public public function setTemplateInlining(templateInlining : Bool) : Void;
	
	/**
	* Return the state of the template inlining feature.
	*/
	@:overload @:public public function getTemplateInlining() : Bool;
	
	/**
	* Set the parameters to use to locate the correct <?xml-stylesheet ...?>
	* processing instruction in the case where the input document to the
	* compiler (and parser) is an XML document.
	* @param media The media attribute to be matched. May be null, in which
	* case the prefered templates will be used (i.e. alternate = no).
	* @param title The value of the title attribute to match. May be null.
	* @param charset The value of the charset attribute to match. May be null.
	*/
	@:overload @:public public function setPIParameters(media : String, title : String, charset : String) : Void;
	
	/**
	* Compiles an XSL stylesheet pointed to by a URL
	* @param url An URL containing the input XSL stylesheet
	*/
	@:overload @:public public function compile(url : java.net.URL) : Bool;
	
	/**
	* Compiles an XSL stylesheet pointed to by a URL
	* @param url An URL containing the input XSL stylesheet
	* @param name The name to assign to the translet class
	*/
	@:overload @:public public function compile(url : java.net.URL, name : String) : Bool;
	
	/**
	* Compiles an XSL stylesheet passed in through an InputStream
	* @param stream An InputStream that will pass in the stylesheet contents
	* @param name The name of the translet class to generate
	* @return 'true' if the compilation was successful
	*/
	@:overload @:public public function compile(stream : java.io.InputStream, name : String) : Bool;
	
	/**
	* Compiles an XSL stylesheet passed in through an InputStream
	* @param input An InputSource that will pass in the stylesheet contents
	* @param name The name of the translet class to generate - can be null
	* @return 'true' if the compilation was successful
	*/
	@:overload @:public public function compile(input : org.xml.sax.InputSource, name : String) : Bool;
	
	/**
	* Compiles a set of stylesheets pointed to by a Vector of URLs
	* @param stylesheets A Vector containing URLs pointing to the stylesheets
	* @return 'true' if the compilation was successful
	*/
	@:overload @:public public function compile(stylesheets : java.util.Vector<Dynamic>) : Bool;
	
	/**
	* Returns an array of bytecode arrays generated by a compilation.
	* @return JVM bytecodes that represent translet class definition
	*/
	@:overload @:public public function getBytecodes() : java.NativeArray<java.NativeArray<java.StdTypes.Int8>>;
	
	/**
	* Compiles a stylesheet pointed to by a URL. The result is put in a
	* set of byte arrays. One byte array for each generated class.
	* @param name The name of the translet class to generate
	* @param input An InputSource that will pass in the stylesheet contents
	* @param outputType The output type
	* @return JVM bytecodes that represent translet class definition
	*/
	@:overload @:public public function compile(name : String, input : org.xml.sax.InputSource, outputType : Int) : java.NativeArray<java.NativeArray<java.StdTypes.Int8>>;
	
	/**
	* Compiles a stylesheet pointed to by a URL. The result is put in a
	* set of byte arrays. One byte array for each generated class.
	* @param name The name of the translet class to generate
	* @param input An InputSource that will pass in the stylesheet contents
	* @return JVM bytecodes that represent translet class definition
	*/
	@:overload @:public public function compile(name : String, input : org.xml.sax.InputSource) : java.NativeArray<java.NativeArray<java.StdTypes.Int8>>;
	
	/**
	* Set the XMLReader to use for parsing the next input stylesheet
	* @param reader XMLReader (SAX2 parser) to use
	*/
	@:overload @:public public function setXMLReader(reader : org.xml.sax.XMLReader) : Void;
	
	/**
	* Get the XMLReader to use for parsing the next input stylesheet
	*/
	@:overload @:public public function getXMLReader() : org.xml.sax.XMLReader;
	
	/**
	* Get a Vector containing all compile error messages
	* @return A Vector containing all compile error messages
	*/
	@:overload @:public public function getErrors() : java.util.Vector<Dynamic>;
	
	/**
	* Get a Vector containing all compile warning messages
	* @return A Vector containing all compile error messages
	*/
	@:overload @:public public function getWarnings() : java.util.Vector<Dynamic>;
	
	/**
	* Print all compile error messages to standard output
	*/
	@:overload @:public public function printErrors() : Void;
	
	/**
	* Print all compile warning messages to standard output
	*/
	@:overload @:public public function printWarnings() : Void;
	
	/**
	* This method is called by the XPathParser when it encounters a call
	* to the document() function. Affects the DOM used by the translet.
	*/
	@:overload @:protected private function setMultiDocument(flag : Bool) : Void;
	
	@:overload @:public public function isMultiDocument() : Bool;
	
	/**
	* This method is called by the XPathParser when it encounters a call
	* to the nodeset() extension function. Implies multi document.
	*/
	@:overload @:protected private function setCallsNodeset(flag : Bool) : Void;
	
	@:overload @:public public function callsNodeset() : Bool;
	
	@:overload @:protected private function setHasIdCall(flag : Bool) : Void;
	
	@:overload @:public public function hasIdCall() : Bool;
	
	/**
	* Set the class name for the generated translet. This class name is
	* overridden if multiple stylesheets are compiled in one go using the
	* compile(Vector urls) method.
	* @param className The name to assign to the translet class
	*/
	@:overload @:public public function setClassName(className : String) : Void;
	
	/**
	* Get the class name for the generated translet.
	*/
	@:overload @:public public function getClassName() : String;
	
	/**
	* Set the destination directory for the translet.
	* The current working directory will be used by default.
	*/
	@:overload @:public public function setDestDirectory(dstDirName : String) : Bool;
	
	/**
	* Set an optional package name for the translet and auxiliary classes
	*/
	@:overload @:public public function setPackageName(packageName : String) : Void;
	
	/**
	* Set the name of an optional JAR-file to dump the translet and
	* auxiliary classes to
	*/
	@:overload @:public public function setJarFileName(jarFileName : String) : Void;
	
	@:overload @:public public function getJarFileName() : String;
	
	/**
	* Set the top-level stylesheet
	*/
	@:overload @:public public function setStylesheet(stylesheet : com.sun.org.apache.xalan.internal.xsltc.compiler.Stylesheet) : Void;
	
	/**
	* Returns the top-level stylesheet
	*/
	@:overload @:public public function getStylesheet() : com.sun.org.apache.xalan.internal.xsltc.compiler.Stylesheet;
	
	/**
	* Registers an attribute and gives it a type so that it can be mapped to
	* DOM attribute types at run-time.
	*/
	@:overload @:public public function registerAttribute(name : com.sun.org.apache.xalan.internal.xsltc.compiler.QName) : Int;
	
	/**
	* Registers an element and gives it a type so that it can be mapped to
	* DOM element types at run-time.
	*/
	@:overload @:public public function registerElement(name : com.sun.org.apache.xalan.internal.xsltc.compiler.QName) : Int;
	
	/**
	* Registers a namespace prefix and gives it a type so that it can be mapped to
	* DOM namespace types at run-time.
	*/
	@:overload @:public public function registerNamespacePrefix(name : com.sun.org.apache.xalan.internal.xsltc.compiler.QName) : Int;
	
	/**
	* Registers a namespace and gives it a type so that it can be mapped to
	* DOM namespace types at run-time.
	*/
	@:overload @:public public function registerNamespace(namespaceURI : String) : Int;
	
	@:overload @:public public function nextModeSerial() : Int;
	
	@:overload @:public public function nextStylesheetSerial() : Int;
	
	@:overload @:public public function nextStepPatternSerial() : Int;
	
	@:overload @:public public function getNumberFieldIndexes() : java.NativeArray<Int>;
	
	@:overload @:public public function nextHelperClassSerial() : Int;
	
	@:overload @:public public function nextAttributeSetSerial() : Int;
	
	@:overload @:public public function getNamesIndex() : java.util.Vector<Dynamic>;
	
	@:overload @:public public function getNamespaceIndex() : java.util.Vector<Dynamic>;
	
	/**
	* Returns a unique name for every helper class needed to
	* execute a translet.
	*/
	@:overload @:public public function getHelperClassName() : String;
	
	@:overload @:public public function dumpClass(clazz : com.sun.org.apache.bcel.internal.classfile.JavaClass) : Void;
	
	/**
	* Generate output JAR-file and packages
	*/
	@:overload @:public public function outputToJar() : Void;
	
	/**
	* Turn debugging messages on/off
	*/
	@:overload @:public public function setDebug(debug : Bool) : Void;
	
	/**
	* Get current debugging message setting
	*/
	@:overload @:public public function debug() : Bool;
	
	/**
	* Retrieve a string representation of the character data to be stored
	* in the translet as a <code>char[]</code>.  There may be more than
	* one such array required.
	* @param index The index of the <code>char[]</code>.  Zero-based.
	* @return String The character data to be stored in the corresponding
	*               <code>char[]</code>.
	*/
	@:overload @:public public function getCharacterData(index : Int) : String;
	
	/**
	* Get the number of char[] arrays, thus far, that will be created to
	* store literal text in the stylesheet.
	*/
	@:overload @:public public function getCharacterDataCount() : Int;
	
	/**
	* Add literal text to char arrays that will be used to store character
	* data in the stylesheet.
	* @param newData String data to be added to char arrays.
	*                Pre-condition:  <code>newData.length() &le; 21845</code>
	* @return int offset at which character data will be stored
	*/
	@:overload @:public public function addCharacterData(newData : String) : Int;
	
	
}
