<nav x-data="{ open: false }" class="bg-white">
    <!-- Primary Navigation Menu -->
    <div class="max-w-full px-4 py-2 mx-auto sm:px-6 lg:px-8">
        <div class="flex justify-between h-16">
            <div class="flex">
                <!-- Logo -->
                <div class="items-center lg:flex shrink-0">
                    <x-template.logo/>
                </div>

                <!-- Navigation Links -->
                <div class="items-center hidden space-x-8 sm:-my-px sm:ml-4 sm:flex">
                    <div class="w-full">
                        <h3 class="text-sm leading-4 tracking-tight text-sky-700 lg:text-xl sm:text-lg sm:leading-none">Online Doctor Finder & Appointment System</h3>
                    </div>
                </div>
            </div>

            <div class="hidden sm:flex sm:items-center sm:ml-6">
                <!-- Login -->
                <div class="relative ml-2">
                    <div class="relative">
                        <span class="inline-flex">
                            <a href="{{ route('login') }}" class="inline-flex items-center p-2 px-16 font-bold text-white uppercase bg-blue-500 border border-l-0 border-transparent border-blue-500 rounded-full hover:text-white hover:bg-blue-700 focus:bg-blue-700 focus:text-white focus:outline-none" href="{{ route('login') }}" :active="request()->routeIs('login')">
                                {{ __('Login') }}
                            </a>
                        </span>
                    </div>
                </div>
            </div>

            <!-- Hamburger -->
            <div class="flex items-center -mr-2 sm:hidden">
                <button @click="open = ! open" class="inline-flex items-center justify-center p-2 text-white transition bg-blue-500 rounded-md hover:text-white hover:bg-blue-700 focus:outline-none focus:bg-blue-700 focus:text-white">
                    <svg class="w-6 h-6" stroke="currentColor" fill="none" viewBox="0 0 24 24">
                        <path :class="{'hidden': open, 'inline-flex': ! open }" class="inline-flex" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                        <path :class="{'hidden': ! open, 'inline-flex': open }" class="hidden" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                    </svg>
                </button>
            </div>
        </div>
    </div>

    <!-- Responsive Navigation Menu -->
    <div :class="{'block': open, 'hidden': ! open}" class="hidden sm:hidden">
        <div class="pt-2 pb-3 space-y-1">
            <x-jet-responsive-nav-link class="text-black border-l-0" href="{{ route('login') }}" :active="request()->routeIs('login')">
                {{ __('Login') }}
            </x-jet-responsive-nav-link>
        </div>
    </div>
</nav>