package com.sun.xml.internal.ws.protocol.soap;
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
extern class ServerMUTube extends com.sun.xml.internal.ws.protocol.soap.MUTube
{
	@:overload @:public public function new(tubeContext : com.sun.xml.internal.ws.api.pipe.ServerTubeAssemblerContext, next : com.sun.xml.internal.ws.api.pipe.Tube) : Void;
	
	@:overload @:protected private function new(that : com.sun.xml.internal.ws.protocol.soap.ServerMUTube, cloner : com.sun.xml.internal.ws.api.pipe.TubeCloner) : Void;
	
	/**
	* Do MU Header Processing on incoming message (request)
	* @return
	*      if all the headers in the packet are understood, returns action such that
	*      next pipe will be inovked.
	*      if all the headers in the packet are not understood, returns action such that
	*      SOAPFault Message is sent to previous pipes.
	*/
	@:overload @:public override public function processRequest(request : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.pipe.NextAction;
	
	@:overload @:public override public function copy(cloner : com.sun.xml.internal.ws.api.pipe.TubeCloner) : com.sun.xml.internal.ws.protocol.soap.ServerMUTube;
	
	
}
