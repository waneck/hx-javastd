package org.jcp.xml.dsig.internal;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2005 The Apache Software Foundation.
*
*  Licensed under the Apache License, Version 2.0 (the "License");
*  you may not use this file except in compliance with the License.
*  You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing, software
*  distributed under the License is distributed on an "AS IS" BASIS,
*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*  See the License for the specific language governing permissions and
*  limitations under the License.
*
*/
/*
* Copyright (c) 2005, 2008, Oracle and/or its affiliates. All rights reserved.
*/
/*
* $Id: DigesterOutputStream.java,v 1.2 2008/07/24 15:20:31 mullan Exp $
*/
extern class DigesterOutputStream extends java.io.OutputStream
{
	/**
	* Creates a DigesterOutputStream.
	*
	* @param md the MessageDigest
	*/
	@:overload public function new(md : java.security.MessageDigest) : Void;
	
	/**
	* Creates a DigesterOutputStream.
	*
	* @param md the MessageDigest
	* @param buffer if true, caches the input bytes
	*/
	@:overload public function new(md : java.security.MessageDigest, buffer : Bool) : Void;
	
	/** @inheritDoc */
	@:overload override public function write(input : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/** @inheritDoc */
	@:overload override public function write(input : Int) : Void;
	
	/** @inheritDoc */
	@:overload override public function write(input : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Void;
	
	/**
	* @return the digest value
	*/
	@:overload public function getDigestValue() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* @return an input stream containing the cached bytes, or
	*    null if not cached
	*/
	@:overload public function getInputStream() : java.io.InputStream;
	
	
}
