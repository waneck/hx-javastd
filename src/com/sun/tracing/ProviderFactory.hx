package com.sun.tracing;
extern class ProviderFactory
{
	/**
	* {@code ProviderFactory} is a factory class used to create instances of
	* providers.
	*
	* To enable tracing in an application, this class must be used to create
	* instances of the provider interfaces defined by users.
	* The system-defined factory is obtained by using the
	* {@code getDefaultFactory()} static method.  The resulting instance can be
	* used to create any number of providers.
	*
	* @since 1.7
	*/
	@:require(java7) @:overload private function new() : Void;
	
	/**
	* Creates an implementation of a Provider interface.
	*
	* @param cls the provider interface to be defined.
	* @return an implementation of {@code cls}, whose methods, when called,
	* will trigger tracepoints in the application.
	* @throws NullPointerException if cls is null
	* @throws IllegalArgumentException if the class definition contains
	* non-void methods
	*/
	@:overload @:abstract public function createProvider<T : com.sun.tracing.Provider>(cls : Class<T>) : T;
	
	/**
	* Returns an implementation of a {@code ProviderFactory} which
	* creates instances of Providers.
	*
	* The created Provider instances will be linked to all appropriate
	* and enabled system-defined tracing mechanisms in the JDK.
	*
	* @return a {@code ProviderFactory} that is used to create Providers.
	*/
	@:overload public static function getDefaultFactory() : ProviderFactory;
	
	
}
