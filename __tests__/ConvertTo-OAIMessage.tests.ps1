Describe "ConvertTo-OAIMessage" -Tag ConvertTo-OAIMessage {
    BeforeAll {
        Import-Module "$PSScriptRoot/../PSAI.psd1" -Force
    }

    It "should have these parameters" {
        $actual = Get-Command ConvertTo-OAIMessage -ErrorAction SilentlyContinue
     
        $actual | Should -Not -BeNullOrEmpty

        $keyArray = $actual.Parameters.Keys -as [array]

        $keyArray[0] | Should -BeExactly 'Message'
        $actual.Parameters.Message.Attributes.ValueFromPipeline | Should -Be $true
    }
}