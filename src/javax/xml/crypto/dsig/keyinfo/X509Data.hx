package javax.xml.crypto.dsig.keyinfo;
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
* $Id: X509Data.java,v 1.4 2005/05/10 16:35:35 mullan Exp $
*/
extern interface X509Data extends javax.xml.crypto.XMLStructure
{
	/**
	* Returns an {@link java.util.Collections#unmodifiableList unmodifiable
	* list} of the content in this <code>X509Data</code>. Valid types are
	* {@link String} (subject names), <code>byte[]</code> (subject key ids),
	* {@link java.security.cert.X509Certificate}, {@link X509CRL},
	* or {@link XMLStructure} ({@link X509IssuerSerial}
	* objects or elements from an external namespace).
	*
	* @return an unmodifiable list of the content in this <code>X509Data</code>
	*    (never <code>null</code> or empty)
	*/
	@:overload public function getContent() : java.util.List<Dynamic>;
	
	
}
