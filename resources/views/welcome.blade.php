<x-guest-layout>
    <x-slot name="menu">
        <x-template.main-menu/>
    </x-slot>

    <section class="container flex w-full px-2 pb-16 mx-auto mt-16 lg:px-0 sm:mt-32">
        
        <div class="flex justify-center w-full text-center text-white md:justify-start">
            <div class="w-full">
                <h2 class="text-2xl font-bold leading-none uppercase xs:text-2x1 md:text-5xl lg:6x1">Find the care you need</h2>
                <p class="mt-4 mb-12">Search more than 1,500 doctors and schedule an appointment online.</p>
            
                <div class="flex flex-col justify-center w-full mx-auto md:space-x-4 md:w-3/5 md:flex-row">
                    <div class="relative w-full mb-5 text-gray-600 md:mb-0 md:w-1/2">
                        @livewire('search')
                    </div>
                    <div class="relative">
                        <input type="search" name="serch" placeholder="Search Location" class="w-full h-10 px-5 pl-10 text-sm text-white placeholder-white bg-blue-500 border-blue-500 rounded-full w focus:outline-none">
                        <button type="submit" class="absolute top-0 left-0 mt-3 ml-4">
                            <svg class="w-4 h-4 fill-white" xmlns="http://www.w3.org/2000/svg" class="w-5 h-5" viewBox="0 0 20 20" fill="currentColor">
                            <path fill-rule="evenodd" d="M5.05 4.05a7 7 0 119.9 9.9L10 18.9l-4.95-4.95a7 7 0 010-9.9zM10 11a2 2 0 100-4 2 2 0 000 4z" clip-rule="evenodd" />
                            </svg>
                        </button>
                    </div>
                </div>
            </div>
        </div>
        
    </section>

    <x-slot name="footer">
        <x-template.footer/>
    </x-slot>
</x-guest-layout>