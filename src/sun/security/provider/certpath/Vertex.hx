package sun.security.provider.certpath;
/*
* Copyright (c) 2000, 2002, Oracle and/or its affiliates. All rights reserved.
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
extern class Vertex
{
	/**
	* return the certificate for this vertex
	*
	* @returns Certificate
	*/
	@:overload @:public public function getCertificate() : java.security.cert.Certificate;
	
	/**
	* get the index for this vertex, where the index is the row of the
	* adjacency list that contains certificates that could follow this
	* certificate.
	*
	* @returns int index for this vertex, or -1 if no following certificates.
	*/
	@:overload @:public public function getIndex() : Int;
	
	/**
	* return the throwable associated with this vertex;
	* returns null if none.
	*
	* @returns Throwable
	*/
	@:overload @:public public function getThrowable() : java.lang.Throwable;
	
	/**
	* Return full string representation of vertex
	*
	* @returns String representation of vertex
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Return string representation of this vertex's
	* certificate information.
	*
	* @returns String representation of certificate info
	*/
	@:overload @:public public function certToString() : String;
	
	/**
	* return Vertex throwable as String compatible with
	* the way toString returns other information
	*
	* @returns String form of exception (or "none")
	*/
	@:overload @:public public function throwableToString() : String;
	
	/**
	* return Vertex index as String compatible with
	* the way other Vertex.xToString() methods display
	* information.
	*
	* @returns String form of index as "Last cert?  [Yes/No]
	*/
	@:overload @:public public function moreToString() : String;
	
	/**
	* return Vertex index as String compatible with
	* the way other Vertex.xToString() methods displays other information.
	*
	* @returns String form of index as "Index:     [numeric index]"
	*/
	@:overload @:public public function indexToString() : String;
	
	
}
