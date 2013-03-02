package com.sun.org.apache.xml.internal.security.exceptions;
extern class XMLSecurityRuntimeException extends java.lang.RuntimeException
{
	/** Field originalException */
	private var originalException : java.lang.Exception;
	
	/** Field msgID */
	private var msgID : String;
	
	/**
	* Constructor XMLSecurityRuntimeException
	*
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructor XMLSecurityRuntimeException
	*
	* @param _msgID
	*/
	@:overload public function new(_msgID : String) : Void;
	
	/**
	* Constructor XMLSecurityRuntimeException
	*
	* @param _msgID
	* @param exArgs
	*/
	@:overload public function new(_msgID : String, exArgs : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Constructor XMLSecurityRuntimeException
	*
	* @param _originalException
	*/
	@:overload public function new(_originalException : java.lang.Exception) : Void;
	
	/**
	* Constructor XMLSecurityRuntimeException
	*
	* @param _msgID
	* @param _originalException
	*/
	@:overload public function new(_msgID : String, _originalException : java.lang.Exception) : Void;
	
	/**
	* Constructor XMLSecurityRuntimeException
	*
	* @param _msgID
	* @param exArgs
	* @param _originalException
	*/
	@:overload public function new(_msgID : String, exArgs : java.NativeArray<Dynamic>, _originalException : java.lang.Exception) : Void;
	
	/**
	* Method getMsgID
	*
	* @return the messageId
	*/
	@:overload public function getMsgID() : String;
	
	/** @inheritDoc */
	@:overload public function toString() : String;
	
	/**
	* Method printStackTrace
	*
	*/
	@:overload public function printStackTrace() : Void;
	
	/**
	* Method printStackTrace
	*
	* @param printwriter
	*/
	@:overload public function printStackTrace(printwriter : java.io.PrintWriter) : Void;
	
	/**
	* Method printStackTrace
	*
	* @param printstream
	*/
	@:overload public function printStackTrace(printstream : java.io.PrintStream) : Void;
	
	/**
	* Method getOriginalException
	*
	* @return the original exception
	*/
	@:overload public function getOriginalException() : java.lang.Exception;
	
	
}
