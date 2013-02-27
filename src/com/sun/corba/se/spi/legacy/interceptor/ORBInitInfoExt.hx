package com.sun.corba.se.spi.legacy.interceptor;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
extern interface ORBInitInfoExt
{
	/** The interface defines an extension to the standard ORBInitInfo
	* that gives access to the ORB being initialized.  Interceptors run
	* as the last stage of initialization of the ORB, so the ORB
	* instance returned by getORB is fully initialized.  Note that
	* this facility eventually shows up post-CORBA 3.0 as a result
	* of the resolution of OMG core issue on accessing the ORB from
	* local objects.
	*/
	@:overload public function getORB() : com.sun.corba.se.spi.orb.ORB;
	
	
}