package com.sun.org.apache.xml.internal.security.exceptions;
extern class XMLSecurityRuntimeException extends java.lang.RuntimeException
{
	/** Field originalException */
	@:protected private var originalException : java.lang.Exception;
	
	/** Field msgID */
	@:protected private var msgID : String;
	
	/**
	* Constructor XMLSecurityRuntimeException
	*
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructor XMLSecurityRuntimeException
	*
	* @param _msgID
	*/
	@:overload @:public public function new(_msgID : String) : Void;
	
	/**
	* Constructor XMLSecurityRuntimeException
	*
	* @param _msgID
	* @param exArgs
	*/
	@:overload @:public public function new(_msgID : String, exArgs : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Constructor XMLSecurityRuntimeException
	*
	* @param _originalException
	*/
	@:overload @:public public function new(_originalException : java.lang.Exception) : Void;
	
	/**
	* Constructor XMLSecurityRuntimeException
	*
	* @param _msgID
	* @param _originalException
	*/
	@:overload @:public public function new(_msgID : String, _originalException : java.lang.Exception) : Void;
	
	/**
	* Constructor XMLSecurityRuntimeException
	*
	* @param _msgID
	* @param exArgs
	* @param _originalException
	*/
	@:overload @:public public function new(_msgID : String, exArgs : java.NativeArray<Dynamic>, _originalException : java.lang.Exception) : Void;
	
	/**
	* Method getMsgID
	*
	* @return the messageId
	*/
	@:overload @:public public function getMsgID() : String;
	
	/** @inheritDoc */
	@:overload @:public override public function toString() : String;
	
	/**
	* Method printStackTrace
	*
	*/
	@:overload @:public override public function printStackTrace() : Void;
	
	/**
	* Method printStackTrace
	*
	* @param printwriter
	*/
	@:overload @:public override public function printStackTrace(printwriter : java.io.PrintWriter) : Void;
	
	/**
	* Method printStackTrace
	*
	* @param printstream
	*/
	@:overload @:public override public function printStackTrace(printstream : java.io.PrintStream) : Void;
	
	/**
	* Method getOriginalException
	*
	* @return the original exception
	*/
	@:overload @:public public function getOriginalException() : java.lang.Exception;
	
	
}
