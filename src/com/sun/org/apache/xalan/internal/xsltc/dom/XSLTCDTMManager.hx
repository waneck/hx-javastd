package com.sun.org.apache.xalan.internal.xsltc.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
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
* $Id: XSLTCDTMManager.java,v 1.2 2005/08/16 22:32:54 jeffsuttor Exp $
*/
extern class XSLTCDTMManager extends com.sun.org.apache.xml.internal.dtm.ref.DTMManagerDefault
{
	/**
	* Constructor DTMManagerDefault
	*
	*/
	@:overload public function new() : Void;
	
	/**
	* Obtain a new instance of a <code>DTMManager</code>.
	* This static method creates a new factory instance.
	* The current implementation just returns a new XSLTCDTMManager instance.
	*/
	@:native('newInstance') @:overload public static function _newInstance() : XSLTCDTMManager;
	
	/**
	* Look up the class that provides the XSLTC DTM Manager service.
	* The following lookup procedure is used to find the service provider.
	* <ol>
	* <li>The value of the
	* <code>com.sun.org.apache.xalan.internal.xsltc.dom.XSLTCDTMManager</code> property, is
	* checked.</li>
	* <li>The <code>xalan.propeties</code> file is checked for a property
	* of the same name.</li>
	* <li>The
	* <code>META-INF/services/com.sun.org.apache.xalan.internal.xsltc.dom.XSLTCDTMManager</code>
	* file is checked.
	* </ol>
	* The default is <code>com.sun.org.apache.xalan.internal.xsltc.dom.XSLTCDTMManager</code>.
	*/
	@:overload public static function getDTMManagerClass() : Class<Dynamic>;
	
	@:overload public static function getDTMManagerClass(useServicesMechanism : Bool) : Class<Dynamic>;
	
	/**
	* Get an instance of a DTM, loaded with the content from the
	* specified source.  If the unique flag is true, a new instance will
	* always be returned.  Otherwise it is up to the DTMManager to return a
	* new instance or an instance that it already created and may be being used
	* by someone else.
	* (I think more parameters will need to be added for error handling, and
	* entity resolution).
	*
	* @param source the specification of the source object.
	* @param unique true if the returned DTM must be unique, probably because it
	* is going to be mutated.
	* @param whiteSpaceFilter Enables filtering of whitespace nodes, and may
	*                         be null.
	* @param incremental true if the DTM should be built incrementally, if
	*                    possible.
	* @param doIndexing true if the caller considers it worth it to use
	*                   indexing schemes.
	*
	* @return a non-null DTM reference.
	*/
	@:overload override public function getDTM(source : javax.xml.transform.Source, unique : Bool, whiteSpaceFilter : com.sun.org.apache.xml.internal.dtm.DTMWSFilter, incremental : Bool, doIndexing : Bool) : com.sun.org.apache.xml.internal.dtm.DTM;
	
	/**
	* Get an instance of a DTM, loaded with the content from the
	* specified source.  If the unique flag is true, a new instance will
	* always be returned.  Otherwise it is up to the DTMManager to return a
	* new instance or an instance that it already created and may be being used
	* by someone else.
	* (I think more parameters will need to be added for error handling, and
	* entity resolution).
	*
	* @param source the specification of the source object.
	* @param unique true if the returned DTM must be unique, probably because it
	* is going to be mutated.
	* @param whiteSpaceFilter Enables filtering of whitespace nodes, and may
	*                         be null.
	* @param incremental true if the DTM should be built incrementally, if
	*                    possible.
	* @param doIndexing true if the caller considers it worth it to use
	*                   indexing schemes.
	* @param buildIdIndex true if the id index table should be built.
	*
	* @return a non-null DTM reference.
	*/
	@:overload public function getDTM(source : javax.xml.transform.Source, unique : Bool, whiteSpaceFilter : com.sun.org.apache.xml.internal.dtm.DTMWSFilter, incremental : Bool, doIndexing : Bool, buildIdIndex : Bool) : com.sun.org.apache.xml.internal.dtm.DTM;
	
	/**
	* Get an instance of a DTM, loaded with the content from the
	* specified source.  If the unique flag is true, a new instance will
	* always be returned.  Otherwise it is up to the DTMManager to return a
	* new instance or an instance that it already created and may be being used
	* by someone else.
	* (I think more parameters will need to be added for error handling, and
	* entity resolution).
	*
	* @param source the specification of the source object.
	* @param unique true if the returned DTM must be unique, probably because it
	* is going to be mutated.
	* @param whiteSpaceFilter Enables filtering of whitespace nodes, and may
	*                         be null.
	* @param incremental true if the DTM should be built incrementally, if
	*                    possible.
	* @param doIndexing true if the caller considers it worth it to use
	*                   indexing schemes.
	* @param buildIdIndex true if the id index table should be built.
	* @param newNameTable true if we want to use a separate ExpandedNameTable
	*                     for this DTM.
	*
	* @return a non-null DTM reference.
	*/
	@:overload public function getDTM(source : javax.xml.transform.Source, unique : Bool, whiteSpaceFilter : com.sun.org.apache.xml.internal.dtm.DTMWSFilter, incremental : Bool, doIndexing : Bool, buildIdIndex : Bool, newNameTable : Bool) : com.sun.org.apache.xml.internal.dtm.DTM;
	
	/**
	* Get an instance of a DTM, loaded with the content from the
	* specified source.  If the unique flag is true, a new instance will
	* always be returned.  Otherwise it is up to the DTMManager to return a
	* new instance or an instance that it already created and may be being used
	* by someone else.
	* (I think more parameters will need to be added for error handling, and
	* entity resolution).
	*
	* @param source the specification of the source object.
	* @param unique true if the returned DTM must be unique, probably because it
	* is going to be mutated.
	* @param whiteSpaceFilter Enables filtering of whitespace nodes, and may
	*                         be null.
	* @param incremental true if the DTM should be built incrementally, if
	*                    possible.
	* @param doIndexing true if the caller considers it worth it to use
	*                   indexing schemes.
	* @param hasUserReader true if <code>source</code> is a
	*                      <code>SAXSource</code> object that has an
	*                      <code>XMLReader</code>, that was specified by the
	*                      user.
	* @param size  Specifies initial size of tables that represent the DTM
	* @param buildIdIndex true if the id index table should be built.
	*
	* @return a non-null DTM reference.
	*/
	@:overload public function getDTM(source : javax.xml.transform.Source, unique : Bool, whiteSpaceFilter : com.sun.org.apache.xml.internal.dtm.DTMWSFilter, incremental : Bool, doIndexing : Bool, hasUserReader : Bool, size : Int, buildIdIndex : Bool) : com.sun.org.apache.xml.internal.dtm.DTM;
	
	/**
	* Get an instance of a DTM, loaded with the content from the
	* specified source.  If the unique flag is true, a new instance will
	* always be returned.  Otherwise it is up to the DTMManager to return a
	* new instance or an instance that it already created and may be being used
	* by someone else.
	* (I think more parameters will need to be added for error handling, and
	* entity resolution).
	*
	* @param source the specification of the source object.
	* @param unique true if the returned DTM must be unique, probably because it
	* is going to be mutated.
	* @param whiteSpaceFilter Enables filtering of whitespace nodes, and may
	*                         be null.
	* @param incremental true if the DTM should be built incrementally, if
	*                    possible.
	* @param doIndexing true if the caller considers it worth it to use
	*                   indexing schemes.
	* @param hasUserReader true if <code>source</code> is a
	*                      <code>SAXSource</code> object that has an
	*                      <code>XMLReader</code>, that was specified by the
	*                      user.
	* @param size  Specifies initial size of tables that represent the DTM
	* @param buildIdIndex true if the id index table should be built.
	* @param newNameTable true if we want to use a separate ExpandedNameTable
	*                     for this DTM.
	*
	* @return a non-null DTM reference.
	*/
	@:overload public function getDTM(source : javax.xml.transform.Source, unique : Bool, whiteSpaceFilter : com.sun.org.apache.xml.internal.dtm.DTMWSFilter, incremental : Bool, doIndexing : Bool, hasUserReader : Bool, size : Int, buildIdIndex : Bool, newNameTable : Bool) : com.sun.org.apache.xml.internal.dtm.DTM;
	
	
}
