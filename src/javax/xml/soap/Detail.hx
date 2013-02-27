package javax.xml.soap;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern interface Detail extends javax.xml.soap.SOAPFaultElement
{
	/**
	* Creates a new <code>DetailEntry</code> object with the given
	* name and adds it to this <code>Detail</code> object.
	*
	* @param name a <code>Name</code> object identifying the
	*         new <code>DetailEntry</code> object
	*
	* @exception SOAPException thrown when there is a problem in adding a
	* DetailEntry object to this Detail object.
	*
	* @see Detail#addDetailEntry(QName qname)
	*/
	@:overload public function addDetailEntry(name : javax.xml.soap.Name) : javax.xml.soap.DetailEntry;
	
	/**
	* Creates a new <code>DetailEntry</code> object with the given
	* QName and adds it to this <code>Detail</code> object. This method
	* is the preferred over the one using Name.
	*
	* @param qname a <code>QName</code> object identifying the
	*         new <code>DetailEntry</code> object
	*
	* @exception SOAPException thrown when there is a problem in adding a
	* DetailEntry object to this Detail object.
	*
	* @see Detail#addDetailEntry(Name name)
	* @since SAAJ 1.3
	*/
	@:require(java3) @:overload public function addDetailEntry(qname : javax.xml.namespace.QName) : javax.xml.soap.DetailEntry;
	
	/**
	* Gets an Iterator over all of the <code>DetailEntry</code>s in this <code>Detail</code> object.
	*
	* @return an <code>Iterator</code> object over the <code>DetailEntry</code>
	*             objects in this <code>Detail</code> object
	*/
	@:overload public function getDetailEntries() : java.util.Iterator<Dynamic>;
	
	
}
