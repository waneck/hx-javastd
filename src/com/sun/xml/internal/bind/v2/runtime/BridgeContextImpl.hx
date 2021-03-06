package com.sun.xml.internal.bind.v2.runtime;
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
extern class BridgeContextImpl extends com.sun.xml.internal.bind.api.BridgeContext
{
	/**
	* {@link BridgeContext} implementation.
	*
	* @author Kohsuke Kawaguchi
	*/
	@:public @:final public var unmarshaller(default, null) : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallerImpl;
	
	@:public @:final public var marshaller(default, null) : com.sun.xml.internal.bind.v2.runtime.MarshallerImpl;
	
	@:overload @:public override public function setErrorHandler(handler : javax.xml.bind.ValidationEventHandler) : Void;
	
	@:overload @:public override public function setAttachmentMarshaller(m : javax.xml.bind.attachment.AttachmentMarshaller) : Void;
	
	@:overload @:public override public function setAttachmentUnmarshaller(u : javax.xml.bind.attachment.AttachmentUnmarshaller) : Void;
	
	@:overload @:public override public function getAttachmentMarshaller() : javax.xml.bind.attachment.AttachmentMarshaller;
	
	@:overload @:public override public function getAttachmentUnmarshaller() : javax.xml.bind.attachment.AttachmentUnmarshaller;
	
	
}
