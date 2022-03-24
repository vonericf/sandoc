<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>{{ config('app.name', 'Laravel') }}</title>

        <!-- Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap">

        <!-- Styles -->
        <link rel="stylesheet" href="{{ mix('css/app.css') }}">

        @livewireStyles
        <style>
            [x-cloak] {
                display: none !important;
            }
            .triangle-theme .pika-label:after {
              content:" \25be";
            }
        </style>
        @stack('styles')
        
        <!-- Scripts -->
        <script src="{{ mix('js/app.js') }}" defer></script>
    </head>
    <body> 
            <!-- Page Content -->
            <main class="w-full h-screen py-0 mt-0 bg-cover"  style="background-image: url({{ asset('images/bg.jpg') }});">
                @if (isset($menu))
                    {{ $menu }}
                @endif
                {{ $slot }}
            </main>

            @if (isset($footer))
                {{ $footer }}
            @endif

        @stack('modals')
        @stack('scripts')
        @livewireScripts
    </body>
</html>
