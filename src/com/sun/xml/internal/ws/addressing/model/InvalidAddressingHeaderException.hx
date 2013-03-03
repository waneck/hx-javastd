package com.sun.xml.internal.ws.addressing.model;
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
extern class InvalidAddressingHeaderException extends javax.xml.ws.WebServiceException
{
	/**
	* Creates a InvalidAddressingHeader exception capturing information about the invalid
	* Addressing Message Property and the reason in Subsubcode.
	* @param problemHeader
	*      represents the invalid Addressing Header.
	* @param subsubcode
	*      represents the reason why the Addressing header in question is invalid.
	*/
	@:overload @:public public function new(problemHeader : javax.xml.namespace.QName, subsubcode : javax.xml.namespace.QName) : Void;
	
	@:overload @:public public function getProblemHeader() : javax.xml.namespace.QName;
	
	@:overload @:public public function getSubsubcode() : javax.xml.namespace.QName;
	
	
}
