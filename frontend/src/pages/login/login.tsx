import { Box, Flex } from '@chakra-ui/react'
import { LoginForm } from './form'
import { LoginHeader } from './header'

export function Login () {
  return (
    <Flex minHeight='100vh' width='full' align='center' justifyContent='center'>
      <Box
        borderWidth={1}
        px={4}
        width='full'
        maxWidth='500px'
        borderRadius={4}
        textAlign='center'
        boxShadow='lg'
      >
        <Box p={4}>
          <LoginHeader />
          <LoginForm />
        </Box>
      </Box>
    </Flex>
  )
}
