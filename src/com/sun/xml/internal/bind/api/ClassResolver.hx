package com.sun.xml.internal.bind.api;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class ClassResolver
{
	/**
	* JAXB calls this method when it sees an unknown element.
	*
	* <p>
	* See the class javadoc for details.
	*
	* @param nsUri
	*      Namespace URI of the unknown element. Can be empty but never null.
	* @param localName
	*      Local name of the unknown element. Never be empty nor null.
	*
	* @return
	*      If a non-null class is returned, it will be used to unmarshal this element.
	*      If null is returned, the resolution is assumed to be failed, and
	*      the unmarshaller will behave as if there was no {@link ClassResolver}
	*      to begin with (that is, to report it to {@link ValidationEventHandler},
	*      then move on.)
	*
	* @throws Exception
	*      Throwing any {@link RuntimeException} causes the unmarshaller to stop
	*      immediately. The exception will be propagated up the call stack.
	*      Throwing any other checked {@link Exception} results in the error
	*      reproted to {@link ValidationEventHandler} (just like any other error
	*      during the unmarshalling.)
	*/
	@:overload @:abstract public function resolveElementName(nsUri : String, localName : String) : Class<Dynamic>;
	
	
}
