package com.sun.xml.internal.bind.v2.runtime.unmarshaller;
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
extern class StructureLoader extends com.sun.xml.internal.bind.v2.runtime.unmarshaller.Loader
{
	@:overload public function new(beanInfo : com.sun.xml.internal.bind.v2.runtime.ClassBeanInfoImpl<Dynamic>) : Void;
	
	/**
	* Completes the initialization.
	*
	* <p>
	* To fix the cyclic reference issue, the main part of the initialization needs to be done
	* after a {@link StructureLoader} is set to {@link ClassBeanInfoImpl#loader}.
	*/
	@:overload public function init(context : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl, beanInfo : com.sun.xml.internal.bind.v2.runtime.ClassBeanInfoImpl<Dynamic>, attWildcard : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<Dynamic, java.util.Map<javax.xml.namespace.QName, String>>) : Void;
	
	@:overload override public function startElement(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State, ea : com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName) : Void;
	
	@:overload override public function childElement(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State, arg : com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName) : Void;
	
	@:overload override public function getExpectedChildElements() : java.util.Collection<javax.xml.namespace.QName>;
	
	@:overload override public function getExpectedAttributes() : java.util.Collection<javax.xml.namespace.QName>;
	
	@:overload override public function text(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State, text : java.lang.CharSequence) : Void;
	
	@:overload override public function leaveElement(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State, ea : com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName) : Void;
	
	@:overload public function getBeanInfo() : com.sun.xml.internal.bind.v2.runtime.JaxBeanInfo<Dynamic>;
	
	
}
