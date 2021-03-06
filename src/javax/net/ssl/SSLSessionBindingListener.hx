package javax.net.ssl;
/*
* Copyright (c) 1997, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern interface SSLSessionBindingListener extends java.util.EventListener
{
	/**
	* This is called to notify the listener that it is being bound into
	* an SSLSession.
	*
	* @param event the event identifying the SSLSession into
	*          which the listener is being bound.
	*/
	@:overload @:public public function valueBound(event : javax.net.ssl.SSLSessionBindingEvent) : Void;
	
	/**
	* This is called to notify the listener that it is being unbound
	* from a SSLSession.
	*
	* @param event the event identifying the SSLSession from
	*          which the listener is being unbound.
	*/
	@:overload @:public public function valueUnbound(event : javax.net.ssl.SSLSessionBindingEvent) : Void;
	
	
}
