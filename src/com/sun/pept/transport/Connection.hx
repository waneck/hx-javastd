package com.sun.pept.transport;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
/**
* $Id: Connection.java,v 1.2 2005/07/23 04:09:58 kohlert Exp $
*/
/** Java interface "Connection.java" generated from Poseidon for UML.
*  Poseidon for UML is developed by <A HREF="http://www.gentleware.com">Gentleware</A>.
*  Generated with <A HREF="http://jakarta.apache.org/velocity/">velocity</A> template engine.
*/
/**
* <p>
*
* @author Dr. Harold Carr
* </p>
*/
extern interface Connection
{
	/**
	* <p>
	* Does ...
	* </p><p>
	*
	* </p><p>
	*
	* @param byteBuffer ...
	* </p>
	*/
	@:overload public function write(byteBuffer : java.nio.ByteBuffer) : Void;
	
	/**
	* <p>
	* Does ...
	* </p><p>
	*
	* @return a EPTFactory with ...
	* </p>
	*/
	@:overload public function getEPTFactory() : com.sun.pept.ept.EPTFactory;
	
	/**
	* <p>
	* Does ...
	* </p><p>
	*
	* @return a int with ...
	* </p><p>
	* @param byteBuffer ...
	* </p>
	*/
	@:overload public function read(byteBuffer : java.nio.ByteBuffer) : Int;
	
	/**
	* <p>
	* Does ...
	* </p><p>
	*
	* </p>
	*/
	@:overload public function readUntilEnd() : java.nio.ByteBuffer;
	
	
}
