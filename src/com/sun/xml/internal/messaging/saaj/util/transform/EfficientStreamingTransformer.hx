package com.sun.xml.internal.messaging.saaj.util.transform;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
/*
* EfficientStreamingTransformer.java
*
* Created on July 29, 2002, 3:49 PM
*/
extern class EfficientStreamingTransformer extends javax.xml.transform.Transformer
{
	@:overload @:public override public function clearParameters() : Void;
	
	@:overload @:public override public function getErrorListener() : javax.xml.transform.ErrorListener;
	
	@:overload @:public override public function getOutputProperties() : java.util.Properties;
	
	@:overload @:public override public function getOutputProperty(str : String) : String;
	
	@:overload @:public override public function getParameter(str : String) : Dynamic;
	
	@:overload @:public override public function getURIResolver() : javax.xml.transform.URIResolver;
	
	@:overload @:public override public function setErrorListener(errorListener : javax.xml.transform.ErrorListener) : Void;
	
	@:overload @:public override public function setOutputProperties(properties : java.util.Properties) : Void;
	
	@:overload @:public override public function setOutputProperty(str : String, str1 : String) : Void;
	
	@:overload @:public override public function setParameter(str : String, obj : Dynamic) : Void;
	
	@:overload @:public override public function setURIResolver(uRIResolver : javax.xml.transform.URIResolver) : Void;
	
	@:overload @:public override public function transform(source : javax.xml.transform.Source, result : javax.xml.transform.Result) : Void;
	
	/**
	* Return Transformer instance for this thread, allocating a new one if
	* necessary. Note that this method does not clear global parameters,
	* properties or any other data set on a previously used transformer.
	*/
	@:overload @:public @:static public static function newTransformer() : javax.xml.transform.Transformer;
	
	
}
