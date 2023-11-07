<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit23e46a160313b16a215b15b5a25265af
{
    public static $prefixLengthsPsr4 = array (
        'T' => 
        array (
            'Turing\\Server\\' => 14,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Turing\\Server\\' => 
        array (
            0 => __DIR__ . '/../..' . '/src',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit23e46a160313b16a215b15b5a25265af::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit23e46a160313b16a215b15b5a25265af::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit23e46a160313b16a215b15b5a25265af::$classMap;

        }, null, ClassLoader::class);
    }
}
