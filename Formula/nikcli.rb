# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubystyle-guide.org/
# RUNNING AUTO-UPDATE? Please set <0 | 1> to false (or remove line) first:
#   auto_update false

class Nikcli < Formula
  desc "AI-native CLI agent that researches, plans, and writes code"
  homepage "https://nikcli.ai"
  url "https://github.com/nikomatt69/nikcli/releases/download/v1.25.0/nikcli-ai-darwin-arm64.zip"
  sha256 "b600616e4fcbe9f8ab58e0b14f97e54d07f86ceecd67ba4681fddfc46a3bee50"
  license "MIT"
  head "https://github.com/nikomatt69/nikcli.git", branch: "nikoemme-main"

  # ARM Apple Silicon
  on_macos do
    on_arm do
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.25.0/nikcli-ai-darwin-arm64.zip"
      sha256 "b600616e4fcbe9f8ab58e0b14f97e54d07f86ceecd67ba4681fddfc46a3bee50"
    end
    on_intel do
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.25.0/nikcli-ai-darwin-x64.zip"
      sha256 "2b291a02bbfcd8b1a529f20cb83a770c91d22ef4f84860587fe299b9e6ef1ade"
    end
  end

  def install
    bin.install "nikcli"
  end

  test do
    system "#{bin}/nikcli", "--version"
  end
end