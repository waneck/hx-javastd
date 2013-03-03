package com.sun.tools.internal.ws.wsdl.document.jaxws;
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
* @author Vivek Pandey
*
* To change the template for this generated type comment go to
* Window&gt;Preferences&gt;Java&gt;Code Generation&gt;Code and Comments
*/
extern class JAXWSBinding extends com.sun.tools.internal.ws.wsdl.framework.ExtensionImpl
{
	/**
	*
	*/
	@:overload @:public public function new(locator : org.xml.sax.Locator) : Void;
	
	/* (non-Javadoc)
	* @see Entity#validateThis()
	*/
	@:overload @:public override public function validateThis() : Void;
	
	/* (non-Javadoc)
	* @see Elemental#getElementName()
	*/
	@:overload @:public override public function getElementName() : javax.xml.namespace.QName;
	
	@:overload @:public public function getWSDLElementName() : javax.xml.namespace.QName;
	
	/* (non-Javadoc)
	* @see TWSDLExtensible#addExtension(ExtensionImpl)
	*/
	@:overload @:public public function addExtension(e : com.sun.tools.internal.ws.wsdl.framework.ExtensionImpl) : Void;
	
	/* (non-Javadoc)
	* @see TWSDLExtensible#extensions()
	*/
	@:overload @:public public function extensions() : java.lang.Iterable<com.sun.tools.internal.ws.wsdl.framework.ExtensionImpl>;
	
	/**
	* @return Returns the enableAsyncMapping.
	*/
	@:overload @:public public function isEnableAsyncMapping() : Null<Bool>;
	
	/**
	* @param enableAsyncMapping The enableAsyncMapping to set.
	*/
	@:overload @:public public function setEnableAsyncMapping(enableAsyncMapping : Null<Bool>) : Void;
	
	/**
	* @return Returns the enableMimeContentMapping.
	*/
	@:overload @:public public function isEnableMimeContentMapping() : Null<Bool>;
	
	/**
	* @param enableMimeContentMapping The enableMimeContentMapping to set.
	*/
	@:overload @:public public function setEnableMimeContentMapping(enableMimeContentMapping : Null<Bool>) : Void;
	
	/**
	* @return Returns the enableWrapperStyle.
	*/
	@:overload @:public public function isEnableWrapperStyle() : Null<Bool>;
	
	/**
	* @param enableWrapperStyle The enableWrapperStyle to set.
	*/
	@:overload @:public public function setEnableWrapperStyle(enableWrapperStyle : Null<Bool>) : Void;
	
	/**
	* @return Returns the jaxwsPackage.
	*/
	@:overload @:public public function getJaxwsPackage() : com.sun.tools.internal.ws.wsdl.document.jaxws.CustomName;
	
	/**
	* @param jaxwsPackage The jaxwsPackage to set.
	*/
	@:overload @:public public function setJaxwsPackage(jaxwsPackage : com.sun.tools.internal.ws.wsdl.document.jaxws.CustomName) : Void;
	
	/**
	* @return Returns the node.
	*/
	@:overload @:public public function getNode() : String;
	
	/**
	* @param node The node to set.
	*/
	@:overload @:public public function setNode(node : String) : Void;
	
	/**
	* @return Returns the version.
	*/
	@:overload @:public public function getVersion() : String;
	
	/**
	* @param version The version to set.
	*/
	@:overload @:public public function setVersion(version : String) : Void;
	
	/**
	* @return Returns the wsdlLocation.
	*/
	@:overload @:public public function getWsdlLocation() : String;
	
	/**
	* @param wsdlLocation The wsdlLocation to set.
	*/
	@:overload @:public public function setWsdlLocation(wsdlLocation : String) : Void;
	
	/**
	* @return Returns the wsdlNamespace.
	*/
	@:overload @:public public function getWsdlNamespace() : String;
	
	/**
	* @param wsdlNamespace The wsdlNamespace to set.
	*/
	@:overload @:public public function setWsdlNamespace(wsdlNamespace : String) : Void;
	
	/**
	* @return Returns the jaxbBindings.
	*/
	@:overload @:public public function getJaxbBindings() : java.util.Set<org.w3c.dom.Element>;
	
	/**
	* @param jaxbBinding The jaxbBindings to set.
	*/
	@:overload @:public public function addJaxbBindings(jaxbBinding : org.w3c.dom.Element) : Void;
	
	/**
	* @return the isProvider.
	*/
	@:overload @:public public function isProvider() : Null<Bool>;
	
	/**
	* @param isProvider The isProvider to set.
	*/
	@:overload @:public public function setProvider(isProvider : Null<Bool>) : Void;
	
	/**
	* @return Returns the methodName.
	*/
	@:overload @:public public function getMethodName() : com.sun.tools.internal.ws.wsdl.document.jaxws.CustomName;
	
	/**
	* @param methodName The methodName to set.
	*/
	@:overload @:public public function setMethodName(methodName : com.sun.tools.internal.ws.wsdl.document.jaxws.CustomName) : Void;
	
	/**
	* @return Returns the parameter.
	*/
	@:overload @:public public function parameters() : java.util.Iterator<com.sun.tools.internal.ws.wsdl.document.jaxws.Parameter>;
	
	/**
	* @param parameter The parameter to set.
	*/
	@:overload @:public public function addParameter(parameter : com.sun.tools.internal.ws.wsdl.document.jaxws.Parameter) : Void;
	
	@:overload @:public public function getParameterName(msgName : String, wsdlPartName : String, element : javax.xml.namespace.QName, wrapperStyle : Bool) : String;
	
	/**
	* @return Returns the className.
	*/
	@:overload @:public public function getClassName() : com.sun.tools.internal.ws.wsdl.document.jaxws.CustomName;
	
	/**
	* @param className The className to set.
	*/
	@:overload @:public public function setClassName(className : com.sun.tools.internal.ws.wsdl.document.jaxws.CustomName) : Void;
	
	/**
	* @return Returns the exception.
	*/
	@:overload @:public public function getException() : com.sun.tools.internal.ws.wsdl.document.jaxws.Exception;
	
	/**
	* @param exception The exception to set.
	*/
	@:overload @:public public function setException(exception : com.sun.tools.internal.ws.wsdl.document.jaxws.Exception) : Void;
	
	
}
