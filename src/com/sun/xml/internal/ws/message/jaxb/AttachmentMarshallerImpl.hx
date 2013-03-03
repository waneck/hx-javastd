package com.sun.xml.internal.ws.message.jaxb;
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
@:internal extern class AttachmentMarshallerImpl extends javax.xml.bind.attachment.AttachmentMarshaller
{
	@:overload @:public public function new(attachemnts : com.sun.xml.internal.ws.api.message.AttachmentSet) : Void;
	
	@:overload @:public override public function addMtomAttachment(data : javax.activation.DataHandler, elementNamespace : String, elementLocalName : String) : String;
	
	@:overload @:public override public function addMtomAttachment(data : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int, mimeType : String, elementNamespace : String, elementLocalName : String) : String;
	
	@:overload @:public override public function addSwaRefAttachment(data : javax.activation.DataHandler) : String;
	
	
}
