package sun.rmi.rmic.newrmic.jrmp;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
* Encapsulates RMI-specific information about a remote implementation
* class (a class that implements one or more remote interfaces).
*
* WARNING: The contents of this source file are not part of any
* supported API.  Code that depends on them does so at its own risk:
* they are subject to change or removal without notice.
*
* @author Peter Jones
**/
@:internal extern class RemoteClass
{
	
}
/**
* Compares ClassDoc instances according to the lexicographic
* order of their binary names.
**/
@:native('sun$rmi$rmic$newrmic$jrmp$RemoteClass$ClassDocComparator') @:internal extern class RemoteClass_ClassDocComparator implements java.util.Comparator<com.sun.javadoc.ClassDoc>
{
	@:overload public function compare(o1 : com.sun.javadoc.ClassDoc, o2 : com.sun.javadoc.ClassDoc) : Int;
	
	
}
/**
* Encapsulates RMI-specific information about a particular remote
* method in the remote implementation class represented by the
* enclosing RemoteClass.
**/
@:native('sun$rmi$rmic$newrmic$jrmp$RemoteClass$Method') @:internal extern class RemoteClass_Method implements java.lang.Cloneable
{
	/**
	* Cloning is supported by returning a shallow copy of this
	* object.
	**/
	@:overload private function clone() : RemoteClass_Method;
	
	
}
