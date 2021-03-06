package javax.xml.crypto;
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
/*
* $Id: OctetStreamData.java,v 1.3 2005/05/10 15:47:42 mullan Exp $
*/
extern class OctetStreamData implements javax.xml.crypto.Data
{
	/**
	* Creates a new <code>OctetStreamData</code>.
	*
	* @param octetStream the input stream containing the octets
	* @throws NullPointerException if <code>octetStream</code> is
	*    <code>null</code>
	*/
	@:overload @:public public function new(octetStream : java.io.InputStream) : Void;
	
	/**
	* Creates a new <code>OctetStreamData</code>.
	*
	* @param octetStream the input stream containing the octets
	* @param uri the URI String identifying the data object (may be
	*    <code>null</code>)
	* @param mimeType the MIME type associated with the data object (may be
	*    <code>null</code>)
	* @throws NullPointerException if <code>octetStream</code> is
	*    <code>null</code>
	*/
	@:overload @:public public function new(octetStream : java.io.InputStream, uri : String, mimeType : String) : Void;
	
	/**
	* Returns the input stream of this <code>OctetStreamData</code>.
	*
	* @return the input stream of this <code>OctetStreamData</code>.
	*/
	@:overload @:public public function getOctetStream() : java.io.InputStream;
	
	/**
	* Returns the URI String identifying the data object represented by this
	* <code>OctetStreamData</code>.
	*
	* @return the URI String or <code>null</code> if not applicable
	*/
	@:overload @:public public function getURI() : String;
	
	/**
	* Returns the MIME type associated with the data object represented by this
	* <code>OctetStreamData</code>.
	*
	* @return the MIME type or <code>null</code> if not applicable
	*/
	@:overload @:public public function getMimeType() : String;
	
	
}
