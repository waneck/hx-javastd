package com.sun.xml.internal.bind;
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
extern interface CycleRecoverable
{
	/**
	* Called when a cycle is detected by the JAXB RI marshaller
	* to nominate a new object to be marshalled instead.
	*
	* @param context
	*      This object is provided by the JAXB RI to inform
	*      the object about the marshalling process that's going on.
	*
	*
	* @return
	*      the object to be marshalled instead of <tt>this</tt> object.
	*      Or return null to indicate that the JAXB RI should behave
	*      just like when your object does not implement {@link CycleRecoverable}
	*      (IOW, cut the cycle arbitrarily and try to go on.)
	*/
	@:overload public function onCycleDetected(context : com.sun.xml.internal.bind.CycleRecoverable.CycleRecoverable_Context) : Dynamic;
	
	
}
/**
* This interface is implemented by the JAXB RI to provide
* information about the on-going marshalling process.
*
* <p>
* We may add more methods in the future, so please do not
* implement this interface in your application.
*/
@:native('com$sun$xml$internal$bind$CycleRecoverable$Context') extern interface CycleRecoverable_Context
{
	/**
	* Returns the marshaller object that's doing the marshalling.
	*
	* @return
	*      always non-null.
	*/
	@:overload public function getMarshaller() : javax.xml.bind.Marshaller;
	
	
}
