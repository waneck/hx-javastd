package com.sun.tools.internal.ws.processor.model;
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
/**
*
* @author WS Development Team
*/
extern class Message extends com.sun.tools.internal.ws.processor.model.ModelObject
{
	@:overload @:protected private function new(entity : com.sun.tools.internal.ws.wsdl.document.Message, receiver : com.sun.tools.internal.ws.wscompile.ErrorReceiver) : Void;
	
	@:overload @:public public function addBodyBlock(b : com.sun.tools.internal.ws.processor.model.Block) : Void;
	
	@:overload @:public public function getBodyBlocks() : java.util.Iterator<com.sun.tools.internal.ws.processor.model.Block>;
	
	@:overload @:public public function getBodyBlockCount() : Int;
	
	/* serialization */
	@:overload @:public public function getBodyBlocksMap() : java.util.Map<javax.xml.namespace.QName, com.sun.tools.internal.ws.processor.model.Block>;
	
	/* serialization */
	@:overload @:public public function setBodyBlocksMap(m : java.util.Map<javax.xml.namespace.QName, com.sun.tools.internal.ws.processor.model.Block>) : Void;
	
	@:overload @:public public function isBodyEmpty() : Bool;
	
	@:overload @:public public function isBodyEncoded() : Bool;
	
	@:overload @:public public function addHeaderBlock(b : com.sun.tools.internal.ws.processor.model.Block) : Void;
	
	@:overload @:public public function getHeaderBlocks() : java.util.Iterator<com.sun.tools.internal.ws.processor.model.Block>;
	
	@:overload @:public public function getHeaderBlockCollection() : java.util.Collection<com.sun.tools.internal.ws.processor.model.Block>;
	
	@:overload @:public public function getHeaderBlockCount() : Int;
	
	/* serialization */
	@:overload @:public public function getHeaderBlocksMap() : java.util.Map<javax.xml.namespace.QName, com.sun.tools.internal.ws.processor.model.Block>;
	
	/* serialization */
	@:overload @:public public function setHeaderBlocksMap(m : java.util.Map<javax.xml.namespace.QName, com.sun.tools.internal.ws.processor.model.Block>) : Void;
	
	/** attachment block */
	@:overload @:public public function addAttachmentBlock(b : com.sun.tools.internal.ws.processor.model.Block) : Void;
	
	@:overload @:public public function addUnboundBlock(b : com.sun.tools.internal.ws.processor.model.Block) : Void;
	
	@:overload @:public public function getUnboundBlocks() : java.util.Iterator<com.sun.tools.internal.ws.processor.model.Block>;
	
	/* serialization */
	@:overload @:public public function getUnboundBlocksMap() : java.util.Map<javax.xml.namespace.QName, com.sun.tools.internal.ws.processor.model.Block>;
	
	@:overload @:public public function getUnboundBlocksCount() : Int;
	
	/* serialization */
	@:overload @:public public function setUnboundBlocksMap(m : java.util.Map<javax.xml.namespace.QName, com.sun.tools.internal.ws.processor.model.Block>) : Void;
	
	@:overload @:public public function getAttachmentBlocks() : java.util.Iterator<com.sun.tools.internal.ws.processor.model.Block>;
	
	@:overload @:public public function getAttachmentBlockCount() : Int;
	
	/* serialization */
	@:overload @:public public function getAttachmentBlocksMap() : java.util.Map<javax.xml.namespace.QName, com.sun.tools.internal.ws.processor.model.Block>;
	
	/* serialization */
	@:overload @:public public function setAttachmentBlocksMap(m : java.util.Map<javax.xml.namespace.QName, com.sun.tools.internal.ws.processor.model.Block>) : Void;
	
	@:overload @:public public function addParameter(p : com.sun.tools.internal.ws.processor.model.Parameter) : Void;
	
	@:overload @:public public function getParameterByName(name : String) : com.sun.tools.internal.ws.processor.model.Parameter;
	
	@:overload @:public public function getParameters() : java.util.Iterator<com.sun.tools.internal.ws.processor.model.Parameter>;
	
	/* serialization */
	@:overload @:public public function getParametersList() : java.util.List<com.sun.tools.internal.ws.processor.model.Parameter>;
	
	/* serialization */
	@:overload @:public public function setParametersList(l : java.util.List<com.sun.tools.internal.ws.processor.model.Parameter>) : Void;
	
	@:overload @:public public function getAllBlocks() : java.util.Set<com.sun.tools.internal.ws.processor.model.Block>;
	
	
}
