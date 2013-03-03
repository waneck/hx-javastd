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
* $Id: SignerOutputStream.java,v 1.2 2008/07/24 15:20:31 mullan Exp $
*/
extern class SignerOutputStream extends java.io.ByteArrayOutputStream
{
	@:overload @:public public function new(sig : java.security.Signature) : Void;
	
	/** @inheritDoc */
	@:overload @:public override public function write(arg0 : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/** @inheritDoc */
	@:overload @:public override public function write(arg0 : Int) : Void;
	
	/** @inheritDoc */
	@:overload @:public override public function write(arg0 : java.NativeArray<java.StdTypes.Int8>, arg1 : Int, arg2 : Int) : Void;
	
	
}
