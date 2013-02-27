package com.sun.org.apache.xalan.internal.xsltc;
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
* $Id: Translet.java,v 1.2.4.1 2005/08/31 10:46:27 pvedula Exp $
*/
extern interface Translet
{
	/**
	* @author Jacek Ambroziak
	* @author Santiago Pericas-Geertsen
	*/
	@:overload public function transform(document : com.sun.org.apache.xalan.internal.xsltc.DOM, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	@:overload public function transform(document : com.sun.org.apache.xalan.internal.xsltc.DOM, handlers : java.NativeArray<com.sun.org.apache.xml.internal.serializer.SerializationHandler>) : Void;
	
	@:overload public function transform(document : com.sun.org.apache.xalan.internal.xsltc.DOM, iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	@:overload public function addParameter(name : String, value : Dynamic) : Dynamic;
	
	@:overload public function buildKeys(document : com.sun.org.apache.xalan.internal.xsltc.DOM, iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler, root : Int) : Void;
	
	@:overload public function addAuxiliaryClass(auxClass : Class<Dynamic>) : Void;
	
	@:overload public function getAuxiliaryClass(className : String) : Class<Dynamic>;
	
	@:overload public function getNamesArray() : java.NativeArray<String>;
	
	@:overload public function getUrisArray() : java.NativeArray<String>;
	
	@:overload public function getTypesArray() : java.NativeArray<Int>;
	
	@:overload public function getNamespaceArray() : java.NativeArray<String>;
	
	@:overload public function useServicesMechnism() : Bool;
	
	@:overload public function setServicesMechnism(flag : Bool) : Void;
	
	
}
