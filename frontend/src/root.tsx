import { App } from './app'

import { ChakraProvider, CSSReset } from '@chakra-ui/react'
import { BrowserRouter } from 'react-router-dom'
export function Root () {
  return (
    <ChakraProvider>
      <CSSReset />
      <BrowserRouter>
        <App />
      </BrowserRouter>
    </ChakraProvider>
  )
}
