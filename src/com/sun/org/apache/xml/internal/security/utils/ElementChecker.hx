package com.sun.org.apache.xml.internal.security.utils;
extern interface ElementChecker
{
	/**
	* Check that the elemnt is the one expect
	*
	* @throws XMLSecurityException
	*/
	@:overload @:public @:public public function guaranteeThatElementInCorrectSpace(expected : com.sun.org.apache.xml.internal.security.utils.ElementProxy, actual : org.w3c.dom.Element) : Void;
	
	@:overload @:public public function isNamespaceElement(el : org.w3c.dom.Node, type : String, ns : String) : Bool;
	
	
}
