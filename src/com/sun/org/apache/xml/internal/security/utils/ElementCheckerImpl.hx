package com.sun.org.apache.xml.internal.security.utils;
extern class ElementCheckerImpl implements com.sun.org.apache.xml.internal.security.utils.ElementChecker
{
	@:overload @:public public function isNamespaceElement(el : org.w3c.dom.Node, type : String, ns : String) : Bool;
	
	/**
	* Check that the elemnt is the one expect
	*
	* @throws XMLSecurityException
	*/
	@:overload @:public public function guaranteeThatElementInCorrectSpace(expected : com.sun.org.apache.xml.internal.security.utils.ElementProxy, actual : org.w3c.dom.Element) : Void;
	
	
}
/** A checker for DOM that interns NS */
@:native('com$sun$org$apache$xml$internal$security$utils$ElementCheckerImpl$InternedNsChecker') extern class ElementCheckerImpl_InternedNsChecker extends com.sun.org.apache.xml.internal.security.utils.ElementCheckerImpl
{
	@:overload @:public override public function guaranteeThatElementInCorrectSpace(expected : com.sun.org.apache.xml.internal.security.utils.ElementProxy, actual : org.w3c.dom.Element) : Void;
	
	
}
/** A checker for DOM that interns NS */
@:native('com$sun$org$apache$xml$internal$security$utils$ElementCheckerImpl$FullChecker') extern class ElementCheckerImpl_FullChecker extends com.sun.org.apache.xml.internal.security.utils.ElementCheckerImpl
{
	@:overload @:public override public function guaranteeThatElementInCorrectSpace(expected : com.sun.org.apache.xml.internal.security.utils.ElementProxy, actual : org.w3c.dom.Element) : Void;
	
	
}
/** An empty checker if schema checking is used */
@:native('com$sun$org$apache$xml$internal$security$utils$ElementCheckerImpl$EmptyChecker') extern class ElementCheckerImpl_EmptyChecker extends com.sun.org.apache.xml.internal.security.utils.ElementCheckerImpl
{
	@:overload @:public override public function guaranteeThatElementInCorrectSpace(expected : com.sun.org.apache.xml.internal.security.utils.ElementProxy, actual : org.w3c.dom.Element) : Void;
	
	
}
